<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Complejo
 *
 * @ORM\Table(name="complejo")
 * @ORM\Entity
 */
class Complejo
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=15, nullable=true)
     */
    private $nombre;

    /**
     * @var integer
     *
     * @ORM\Column(name="idubigeo", type="integer", nullable=true)
     */
    private $idubigeo;

    /**
     * @var integer
     *
     * @ORM\Column(name="pertenecealipd", type="integer", nullable=true)
     */
    private $pertenecealipd;

    /**
     * @var integer
     *
     * @ORM\Column(name="estado", type="integer", nullable=true)
     */
    private $estado;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechacreacion", type="date", nullable=true)
     */
    private $fechacreacion;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fechaeliminacion", type="date", nullable=true)
     */
    private $fechaeliminacion;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=150, nullable=true)
     */
    private $descripcion;

    /**
     * @var integer
     *
     * @ORM\Column(name="idcomplejo", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idcomplejo;


}

