<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Evento
 *
 * @ORM\Table(name="evento")
 * @ORM\Entity
 */
class Evento
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idubigeo", type="integer", nullable=true)
     */
    private $idubigeo;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechadecreacion", type="date", nullable=true)
     */
    private $fechadecreacion;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechainicio", type="date", nullable=true)
     */
    private $fechainicio;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechafin", type="date", nullable=true)
     */
    private $fechafin;

    /**
     * @var integer
     *
     * @ORM\Column(name="idcomplejo", type="integer", nullable=true)
     */
    private $idcomplejo;

    /**
     * @var string
     *
     * @ORM\Column(name="objetivo", type="string", length=250, nullable=true)
     */
    private $objetivo;

    /**
     * @var integer
     *
     * @ORM\Column(name="cantidadeportistas", type="integer", nullable=true)
     */
    private $cantidadeportistas;

    /**
     * @var integer
     *
     * @ORM\Column(name="edadmin", type="integer", nullable=true)
     */
    private $edadmin;

    /**
     * @var integer
     *
     * @ORM\Column(name="edadmax", type="integer", nullable=true)
     */
    private $edadmax;

    /**
     * @var string
     *
     * @ORM\Column(name="organizador", type="string", length=30, nullable=true)
     */
    private $organizador;

    /**
     * @var integer
     *
     * @ORM\Column(name="idevento", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idevento;


}

