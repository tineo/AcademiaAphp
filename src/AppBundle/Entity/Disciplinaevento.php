<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Disciplinaevento
 *
 * @ORM\Table(name="disciplinaevento")
 * @ORM\Entity
 */
class Disciplinaevento
{
    /**
     * @var integer
     *
     * @ORM\Column(name="iddisciplina", type="integer", nullable=true)
     */
    private $iddisciplina;

    /**
     * @var integer
     *
     * @ORM\Column(name="idevento", type="integer", nullable=true)
     */
    private $idevento;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="inicio", type="datetime", nullable=true)
     */
    private $inicio;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fin", type="datetime", nullable=true)
     */
    private $fin;

    /**
     * @var integer
     *
     * @ORM\Column(name="capacidadmax", type="integer", nullable=true)
     */
    private $capacidadmax;

    /**
     * @var integer
     *
     * @ORM\Column(name="estado", type="integer", nullable=true)
     */
    private $estado;

    /**
     * @var integer
     *
     * @ORM\Column(name="iddisciplinaevento", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddisciplinaevento;


}

